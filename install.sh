echo "preparing installation..."
wait 1

sudo touch /bin/arcas
sudo touch /bin/arcas-adv

sudo mkdir /usr/share/arcas/

sudo cp arcas.jl ~/usr/share/arcas
sudo cp arcas-adv.jl ~/usr/share/arcas

sudo echo "julia /usr/share/arcas/arcas.jl" >> /bin/arcas
sudo echo "julia /usr/share/arcas/arcas-adv.jl" >> /bin/arcas
