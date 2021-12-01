#!/bin/bash -e

offline_msg="You are offline."

rapidgasget=$(curl -s https://etherchain.org/api/gasnow | jq -r '.data.rapid');rapidgasformat=$(printf "%'d" $rapidgasget)
fastgasget=$(curl -s https://etherchain.org/api/gasnow | jq -r '.data.fast');fastgasformat=$(printf "%'d" $fastgasget)
standardgasget=$(curl -s https://etherchain.org/api/gasnow | jq -r '.data.standard');standardgasformat=$(printf "%'d" $standardgasget)
slowgasget=$(curl -s https://etherchain.org/api/gasnow | jq -r '.data.slow');slowgasformat=$(printf "%'d" $slowgasget)

#ethprice=$(curl -s https://etherchain.org/api/gasnow | jq -r '.data.priceUSD')
#rapidgas_toeth=$(echo "0.1 0.1" | awk '{printf "%.18f\n", $rapidgasget / 1000000000000000000}')
#rapidgas_cost=$(echo "$value + $value"|bc)

if [ "$1" != "" ]
   then
     if [ "$1" = "gasno" ];then
        if online -s; then echo ${fastgasformat%%,*}; else echo "OFF"; fi
fi
     if [ "$1" = "icon" ];then
        echo "/home/daniell/Desktop/gas-pump.svg"
fi
     if [ "$1" = "oneline" ];then
        if online -s; then echo "🚀 Rapid: ${rapidgasformat%%,*} | ✈ Fast: ${fastgasformat%%,*} | 🚗 Standard: ${standardgasformat%%,*} | 🛵 Slow: ${slowgasformat%%,*}"; else echo "❌ $offline_msg"; fi
fi
   else
      gaslines () {
      echo "⛽ ETH Gas"
      echo "Current gas prices in GWei:"
      echo "--------------------------------"

      echo "🚀 Rapid: ${rapidgasformat%%,*}"
      echo " | 15 Seconds"
      echo "--------------------------------"

      echo "✈ Fast: ${fastgasformat%%,*}"
      echo " | 1 Minute"
      echo "--------------------------------"

      echo "🚗 Standard: ${standardgasformat%%,*}"
      echo " | 3 Minutes"
      echo "--------------------------------"

      echo "🛵 Slow: ${slowgasformat%%,*}"
      echo " | > 10 Minutes"
}
      if online -s; then gaslines; else echo "⛽ ETH Gas:";echo "$offline_msg"; fi
fi
