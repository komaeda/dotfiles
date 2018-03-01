# cms
# Autogenerated from man page /usr/share/man/man1/cms.1ssl.gz
complete -c cms -o help --description 'Print out a usage message.'
complete -c cms -o encrypt --description 'encrypt mail for the given recipient certificates.'
complete -c cms -o decrypt --description 'decrypt mail using the supplied certificate and private key.'
complete -c cms -o debug_decrypt --description 'this option sets the \\s-1CMS_DEBUG_DECRYPT\\s0 flag.'
complete -c cms -o sign --description 'sign mail using the supplied certificate and private key.'
complete -c cms -o verify --description 'verify signed mail.'
complete -c cms -o cmsout --description 'takes an input message and writes out a \\s-1PEM\\s0 encoded \\s-1CMS\\s0 structu…'
complete -c cms -o resign --description 'resign a message: take an existing message and one or more new signers.'
complete -c cms -o data_create --description 'Create a \\s-1CMS\\s0 Data type.'
complete -c cms -o data_out --description 'Data type and output the content.'
complete -c cms -o digest_create --description 'Create a \\s-1CMS\\s0 DigestedData type.'
complete -c cms -o digest_verify --description 'Verify a \\s-1CMS\\s0 DigestedData type and output the content.'
complete -c cms -o compress --description 'Create a \\s-1CMS\\s0 CompressedData type.'
complete -c cms -o uncompress --description 'Uncompress a \\s-1CMS\\s0 CompressedData type and output the content.'
complete -c cms -o EncryptedData_encrypt --description 'Encrypt content using supplied symmetric key and algorithm using a \\s-1CMS\\s0…'
complete -c cms -o sign_receipt --description 'Generate and output a signed receipt for the supplied message.'
complete -c cms -o verify_receipt --description 'Verify a signed receipt in filename receipt.'
complete -c cms -o in --description 'the input message to be encrypted or signed or the message to be decrypted or…'
complete -c cms -o inform --description 'this specifies the input format for the \\s-1CMS\\s0 structure.'
complete -c cms -o rctform --description 'specify the format for a signed receipt for use with the -receipt_verify oper…'
complete -c cms -o out --description 'the message text that has been decrypted or verified or the output \\s-1MIME\\s…'
complete -c cms -o outform --description 'this specifies the output format for the \\s-1CMS\\s0 structure.'
complete -c cms -o stream -o indef -o noindef --description 'the -stream and -indef options are equivalent and enable streaming I/O for en…'
complete -c cms -o content --description 'This specifies a file containing the detached content, this is only useful wi…'
complete -c cms -o text --description 'this option adds plain text (text/plain) \\s-1MIME\\s0 headers to the supplied …'
complete -c cms -o noout --description 'for the -cmsout operation do not output the parsed \\s-1CMS\\s0 structure.'
complete -c cms -o print --description 'for the -cmsout operation print out all fields of the \\s-1CMS\\s0 structure.'
complete -c cms -o CAfile --description 'a file containing trusted \\s-1CA\\s0 certificates, only used with -verify.'
complete -c cms -o CApath --description 'a directory containing trusted \\s-1CA\\s0 certificates, only used with -verify.'
complete -c cms -o no-CAfile --description 'Do not load the trusted \\s-1CA\\s0 certificates from the default file location.'
complete -c cms -o no-CApath --description 'Do not load the trusted \\s-1CA\\s0 certificates from the default directory loc…'
complete -c cms -o md --description 'digest algorithm to use when signing or resigning.'
complete -c cms -o nointern --description 'when verifying a message normally certificates (if any) included in the messa…'
complete -c cms -o no_signer_cert_verify --description 'do not verify the signers certificate of a signed message.'
complete -c cms -o nocerts --description 'when signing a message the signer\'s certificate is normally included with thi…'
complete -c cms -o noattr --description 'normally when a message is signed a set of attributes are included which incl…'
complete -c cms -o nosmimecap --description 'exclude the list of supported algorithms from signed attributes, other option…'
complete -c cms -o binary --description 'normally the input message is converted to \\*(L"canonical\\*(R" format which i…'
complete -c cms -o crlfeol --description 'normally the output file uses a single \\s-1LF\\s0 as end of line.'
complete -c cms -o asciicrlf --description 'when signing use \\s-1ASCII CRLF\\s0 format canonicalisation.'
complete -c cms -o nodetach --description 'when signing a message use opaque signing: this form is more resistant to tra…'
complete -c cms -o certfile --description 'allows additional certificates to be specified.'
complete -c cms -o certsout --description 'any certificates contained in the message are written to file.'
complete -c cms -o signer --description 'a signing certificate when signing or resigning a message, this option can be…'
complete -c cms -o recip --description 'when decrypting a message this specifies the recipients certificate.'
complete -c cms -o keyid --description 'use subject key identifier to identify certificates instead of issuer name an…'
complete -c cms -o receipt_request_all -o receipt_request_first --description 'for -sign option include a signed receipt request.'
complete -c cms -o receipt_request_from --description 'for -sign option include a signed receipt request.'
complete -c cms -o receipt_request_to --description 'Add an explicit email address where signed receipts should be sent to.'
complete -c cms -o receipt_request_print --description 'For the -verify operation print out the contents of any signed receipt reques…'
complete -c cms -o secretkey --description 'specify symmetric key to use.'
complete -c cms -o secretkeyid --description 'the key identifier for the supplied symmetric key for KEKRecipientInfo type.'
complete -c cms -o econtent_type --description 'set the encapsulated content type to type if not supplied the Data type is us…'
complete -c cms -o inkey --description 'the private key to use when signing or decrypting.'
complete -c cms -o keyopt --description 'for signing and encryption this option can be used multiple times to set cust…'
complete -c cms -o passin --description 'the private key password source.'
complete -c cms -o rand --description 'a file or files containing random data used to seed the random number generat…'
complete -c cms -o to -o from -o subject --description 'the relevant mail headers.'
