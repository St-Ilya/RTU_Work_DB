classDiagram
direction BT
class company {
   integer id
   varchar name
}
class pass_in_trip {
   integer id
   integer trip
   integer passenger
   varchar place
}
class passenger {
   integer id
   varchar name
}
class trip {
   integer id
   integer company
   varchar plane
   varchar town_from
   varchar town_to
   varchar time_out
   varchar time_in
}

