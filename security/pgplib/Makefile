# OpenBSD makefile for:	PGPlib
# Version required:	1.1
# Date created:		September 28, 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.6 2000/03/23 05:09:33 turan Exp $

#BROKEN=		inconsistant build failures

DISTNAME=       PGPlib-1.1
PKGNAME=	PGPlib
CATEGORIES=	security
MASTER_SITES=	ftp://dslab1.cs.uit.no/pub/

MAINTAINER=	ports@openbsd.org

#This port contains crypto subject to US export laws.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

do-install:
	${INSTALL_MAN} ${WRKSRC}/man/PGPlib.3 ${WRKSRC}/man/add_sig.3 ${WRKSRC}/man/add_uid.3 ${WRKSRC}/man/armor.3 ${WRKSRC}/man/bufgets.3 ${WRKSRC}/man/compress.3 ${WRKSRC}/man/convential_key_decrypt.3 ${WRKSRC}/man/convential_key_encrypt.3 ${WRKSRC}/man/decrypt_seckey.3 ${WRKSRC}/man/find_shortid.3 ${WRKSRC}/man/flio.3 ${WRKSRC}/man/free_keyrecord.3 ${WRKSRC}/man/get_keycontents.3 ${WRKSRC}/man/get_only_pubkey.3 ${WRKSRC}/man/get_pubkey_rec.3 ${WRKSRC}/man/is_compromised.3 ${WRKSRC}/man/key_exists.3 ${WRKSRC}/man/keydb_end.3 ${WRKSRC}/man/keydb_init.3 ${WRKSRC}/man/keyring.3 ${WRKSRC}/man/keys_from_string.3 ${WRKSRC}/man/literal.3 ${WRKSRC}/man/make_ctb.3 ${WRKSRC}/man/packet.3 ${WRKSRC}/man/pke.3 ${WRKSRC}/man/pub_encrypt_buffer.3 ${WRKSRC}/man/pub_fingerprint.3 ${WRKSRC}/man/pubkey.3 ${WRKSRC}/man/sec_decrypt_packet.3 ${WRKSRC}/man/seckey.3 ${WRKSRC}/man/signature.3 ${WRKSRC}/man/store_pubkey.3 ${WRKSRC}/man/store_uid.3 ${WRKSRC}/man/trust.3 ${WRKSRC}/man/uid.3 ${WRKSRC}/man/uids_from_keyid.3 ${PREFIX}/man/man3/
	${INSTALL_DATA} ${WRKSRC}/src/libpgp.a ${PREFIX}/lib/
	${INSTALL_DATA} ${WRKSRC}/src/pgplib.h ${WRKSRC}/src/pgplibconf.h ${PREFIX}/include/
.include <bsd.port.mk>
