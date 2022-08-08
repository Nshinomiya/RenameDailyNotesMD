function global:MonthName2Month
{
    switch($args[0])
    {
       default {return $args[0]}
        "January" {return 1}
        "February" {return 2}
        "March" {return 3}
        "April" {return 4}
        "May" {return 5}
        "June" {return 6}
        "July" {return 7}
        "August" {return 8}
        "September" {return 9}
        "October" {return 10}
        "November" {return 11}
        "December" {return 12}
    }
}
