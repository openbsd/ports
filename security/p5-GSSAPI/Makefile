# $OpenBSD: Makefile,v 1.6 2008/09/01 07:17:04 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the GSSAPIv2 library

MODULES=	cpan
DISTNAME=	GSSAPI-0.26
CATEGORIES=	security

HOMEPAGE=	http://perlgssapi.sourceforge.net/

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	asn1 crypto gssapi krb5

CPAN_AUTHOR=	AGROLMS

CONFIGURE_ARGS=	--gssapi_libs="-lgssapi -lkrb5 -lasn1 -lcrypto" \
		--gssapi_inc="-I/usr/include/kerberosV" \
		CCFLAGS="-DHEIMDAL"

.include <bsd.port.mk>
