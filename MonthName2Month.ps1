function global:MonthName2Month
{
    switch($args[0])
    {
       default {return $args[0]}
        "January" {return "01"}
        "February" {return "02"}
        "March" {return "03"}
        "April" {return "04"}
        "May" {return "05"}
        "June" {return "06"}
        "July" {return "07"}
        "August" {return "08"}
        "September" {return "09"}
        "October" {return "10"}
        "November" {return "11"}
        "December" {return "12"}
    }
}
