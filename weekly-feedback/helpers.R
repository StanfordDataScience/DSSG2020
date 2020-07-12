timestamps_to_weeks <- function(timestamps){
    cuts <- mdy("7/01/2020") + 0:7 * 7
    
    timestamps %>% 
        ymd_hms() %>% 
        date() %>% 
        cut(cuts) %>% 
        as.integer()
}
