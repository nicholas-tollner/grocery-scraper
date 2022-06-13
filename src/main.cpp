//
// Created by Nickt on 9/06/2022.
//
#include <iostream>
#include <curl.h>
#include <cstring>

int main(int argc, const char* argv[])
{
    const char url[] = "";
    const char* ptr = url;

    CURL *curl = curl_easy_init();

    if (curl)
    {
        curl_easy_setopt(curl, CURLOPT_URL, ptr);

        curl_easy_perform(curl);
    }


    return 0;
}
