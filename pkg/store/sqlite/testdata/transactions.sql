-- Counterparty Fixtures
INSERT INTO counterparties (id, source, directory_id, registered_directory, protocol, common_name, endpoint, name, website, country, business_category, vasp_categories, verified_on, ivms101, created, modified) VALUES
    (x'018f305df388d9fef7ee5b5b98756d0a', 'gds', '83237113-db52-4b75-bea0-1c60d6662370', 'trisatest.dev', 'trisa', 'api.alice.vaspbot.net', 'api.alice.vaspbot.net:443', 'Alice VASP', 'https://alice.vaspbot.net', 'US', 'PRIVATE_ORGANIZATION', '["Exchange","DEX"]', '2023-04-08T18:19:44+00:00', null, '2024-04-30T13:56:54.664-05:00', '2024-04-30T13:56:54.664-05:00'),
    (x'018f306466bd88adf67fa5f268575183', 'user', null, null, 'trp', 'bob.vaspbot.net', 'https://api.bob.vaspbot.net', 'Bob VASP', 'https://bob.vaspbot.net', 'GB', 'PRIVATE_ORGANIZATION', '["DEX"]', null, null, '2024-04-30T14:03:57.373-05:00', '2024-04-30T14:03:57.373-05:00'),
    (x'018f3079ac61294ecc5ea4e33a02929b', 'gds', '2666abb0-5e92-4d02-a9ba-5539323e9683', 'trisatest.dev', 'trisa', 'zip.vaspbot.net', 'zip.vaspbot.net:443', 'Zip Wallet, Inc.', 'https://zip.vaspbot.net', 'BR', 'PRIVATE_ORGANIZATION', '["Exchange","Custodial"]', '2023-04-08T18:19:44+00:00', null, '2024-04-30T14:27:11.457-05:00', '2024-04-30T14:27:11.457-05:00')
;

-- Transaction Fixtures
INSERT INTO transactions (id, source, status, counterparty, counterparty_id, originator, originator_address, beneficiary, beneficiary_address, virtual_asset, amount, last_update, created, modified) VALUES
    ('c20a7cdf-5c23-4b44-b7cd-a29cd00761a3', 'local', 'pending', 'AliceVASP', x'018f305df388d9fef7ee5b5b98756d0a', 'Mary Tilcott', 'mjJ9xufmdSfZLRUXV6Ac3r64M6bbrxCu48', 'Sarah Radfeld', '19nFejdNSUhzkAAdwAvP3wc53o8dL326QQ', 'BTC', 0.0003842, '2024-04-30T14:09:57-05:00', '2024-04-30T14:09:57-05:00', '2024-04-30T14:09:57-05:00'),
    ('2c891c75-14fa-4c71-aa07-6405b98db7a3', 'local', 'completed', 'AliceVASP', x'018f305df388d9fef7ee5b5b98756d0a', 'Mary Tilcott', '0x2FDCB3960B79A4DE2224BAE781337B727AE817BE', 'James Demarco', '0x78C4F1D614051E2D5F32DCCF6BC90235602C5866', 'ETH', 100.21111, '2024-05-15T11:23:11-04:00', '2024-05-15T10:48:57-04:00', '2024-05-15T11:23:11-04:00'),
    ('82624eee-2dab-45e6-abc0-df931fe2d832', 'remote', 'action required', 'BobVASP', x'018f306466bd88adf67fa5f268575183', 'Rebecca St. James', 'msEcmMQMiyHotN8QSw1Y5XyzzD7okUUnbr', 'Robert Franklin', 'mzyKugUmYBmzkMQijyEFyu39FKjdz3QrGu', 'LTC', 213.000031, '2024-05-16T22:01:32-04:00', '2024-05-15T10:50:58-04:00', '2024-05-16T22:01:32-04:00'),
    ('b04dc71c-7214-46a5-a514-381ef0bcc494', 'local', 'draft', 'BobVASP', x'018f306466bd88adf67fa5f268575183', 'Mary Tilcott', 'mjJ9xufmdSfZLRUXV6Ac3r64M6bbrxCu48', 'Frank Jeffers', 'n4RmmDzqaJiq86NYTp55P1yi1XGRczskFy', 'LTC', 32.121334, NULL, '2024-05-20T15:51:21-05:00', '2024-05-20T15:51:21-05:00')
;

-- Secure Envelope Fixtures
-- TODO: how to easily create secure envelope fixtures?
-- NOTE: these secure envelopes do not contain valid binary data.
INSERT INTO secure_envelopes (id, envelope_id, direction, is_error, encryption_key, hmac_secret, valid_hmac, timestamp, public_key, envelope, created, modified) VALUES
    (x'018f976e4e1441aa6db8e4352325c28b', 'c20a7cdf-5c23-4b44-b7cd-a29cd00761a3', 'outgoing', 'f', x'7d89781b509ef69454887273ce79b4b5f9b5106bc6d95c61329306f94f9a7f01', x'f2ba2012f4cc046b10a7486cb60a8fc81db278536779b20b21779789ac84ded5', 't', '2024-04-30T14:09:57-05:00', 'SHA256:ToLuV/KNXWxQWd7/b3DK/hCgbN1Zg1PQECIHWr3F8KM', x'0148cdac5bb7a767393e2080b2f5d9f99b9a198a238ba980eec58c29825e1ab45eaf2573f36a77c6fdd8', '2024-04-30T14:09:57-05:00', '2024-04-30T14:09:57-05:00'),
    (x'018f97a67d4d8009c525d19f4786493b', 'c20a7cdf-5c23-4b44-b7cd-a29cd00761a3', 'incoming', 'f', x'7d89781b509ef69454887273ce79b4b5f9b5106bc6d95c61329306f94f9a7f01', x'f2ba2012f4cc046b10a7486cb60a8fc81db278536779b20b21779789ac84ded5', 't', '2024-04-30T14:09:57-05:00', 'SHA256:AyGRQJVPNT5wluI+DYbufxjy/LGOgE6Pq4A6/O6f3hg', x'e02c42fb8d838237ae8ecc5e57b90547d516c688f6937df98ebc20a44ef66b9d7da0e1ca85abf5b7123a', '2024-04-30T14:09:57-05:00', '2024-04-30T14:09:57-05:00'),
    (x'018f97a7fac9ea76a41b8cc348325543', '2c891c75-14fa-4c71-aa07-6405b98db7a3', 'outgoing', 'f', x'0ee60ae7fca2dda56c04b9ad2fc758910ce145cdc4cad74036624a007d36c7b7', x'3b8a1cecec99e501124d368fb1e87c3d4ae40c9182e68e27660fa50e911d490d', 't', '2024-05-15T10:48:57-04:00', 'SHA256:ToLuV/KNXWxQWd7/b3DK/hCgbN1Zg1PQECIHWr3F8KM', x'36bb1a8564fae13bbc142335f9f83d70d9d59d39bd52fd1598c91a4632bcc0178b5260bb740b2b8c68aa', '2024-05-15T10:48:57-04:00', '2024-05-15T10:48:57-04:00'),
    (x'018f97a81576b3607255abac7663b321', '2c891c75-14fa-4c71-aa07-6405b98db7a3', 'incoming', 'f', x'0ee60ae7fca2dda56c04b9ad2fc758910ce145cdc4cad74036624a007d36c7b7', x'3b8a1cecec99e501124d368fb1e87c3d4ae40c9182e68e27660fa50e911d490d', 't', '2024-05-15T10:48:57-04:00', 'SHA256:AyGRQJVPNT5wluI+DYbufxjy/LGOgE6Pq4A6/O6f3hg', x'd55a7e80ede4fda350fd3f5101d23047ac79cfe97b1c67c85a7fca0eb2de6701fcf70123389c79d83d58', '2024-05-15T10:48:57-04:00', '2024-05-15T10:48:57-04:00'),
    (x'018f97ab7d0320f04313ae9870158aee', '2c891c75-14fa-4c71-aa07-6405b98db7a3', 'incoming', 'f', x'0ee60ae7fca2dda56c04b9ad2fc758910ce145cdc4cad74036624a007d36c7b7', x'3b8a1cecec99e501124d368fb1e87c3d4ae40c9182e68e27660fa50e911d490d', 't', '2024-05-15T11:23:11-04:00', 'SHA256:AyGRQJVPNT5wluI+DYbufxjy/LGOgE6Pq4A6/O6f3hg', x'eb63ddd01f435f3bc23a1e221624d3a25f196c697c506c6bc2b623aeaf825ee9eabdab603635e0183099', '2024-05-15T11:23:11-04:00', '2024-05-15T11:23:11-04:00'),
    (x'018f97abab1928280fde803ee9741fa1', '2c891c75-14fa-4c71-aa07-6405b98db7a3', 'outgoing', 'f', x'0ee60ae7fca2dda56c04b9ad2fc758910ce145cdc4cad74036624a007d36c7b7', x'3b8a1cecec99e501124d368fb1e87c3d4ae40c9182e68e27660fa50e911d490d', 't', '2024-05-15T11:23:11-04:00', 'SHA256:ToLuV/KNXWxQWd7/b3DK/hCgbN1Zg1PQECIHWr3F8KM', x'd8fbacff921d925cc078ae44b46df79cf627726509677c57e8fcafa61672cec342fdc517a1b8f568c0ef', '2024-05-15T11:23:11-04:00', '2024-05-15T11:23:11-04:00'),
    (x'018f97abc778cd23ac2326e667fbfd3c', '82624eee-2dab-45e6-abc0-df931fe2d832', 'incoming', 'f', x'b7a76c7148c298e7a769b6b044c44c60e7b70f7b39e0a8f3f73f395e5abc0a20', x'6ca8bd47e73f513d9ffb0ae34d0cc80d27b28e14a821c988412c6dcc887429a8', 't', '2024-05-16T22:01:32-04:00', 'SHA256:AyGRQJVPNT5wluI+DYbufxjy/LGOgE6Pq4A6/O6f3hg', x'6bca1c2baabddec8815147be3b34017604ee25b6daf0bbc7ae4527b96c39fa0c3d64d116903165ac25f8', '2024-05-16T22:01:32-04:00', '2024-05-16T22:01:32-04:00'),
    (x'018f97abe4b19ad83ed03c1ea70c8f1d', '82624eee-2dab-45e6-abc0-df931fe2d832', 'outgoing', 'f', x'b7a76c7148c298e7a769b6b044c44c60e7b70f7b39e0a8f3f73f395e5abc0a20', x'6ca8bd47e73f513d9ffb0ae34d0cc80d27b28e14a821c988412c6dcc887429a8', 't', '2024-05-16T22:01:32-04:00', 'SHA256:/8rKY/X1tn9TIVDq1XRrTSqDoNiSMvM5OWx76BHK/n4', x'60c0a147144eacde87cb91ca40097cb3f56e4b760f4aa99bcaa17a8bef47568b9fe6e4f9dd0200fa04de', '2024-05-16T22:01:32-04:00', '2024-05-16T22:01:32-04:00')
;