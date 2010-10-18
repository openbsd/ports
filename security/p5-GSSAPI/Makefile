# $OpenBSD: Makefile,v 1.10 2010/10/18 21:41:46 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the GSSAPIv2 library

MODULES=	cpan
DISTNAME=	GSSAPI-0.26
REVISION=	1
CATEGORIES=	security
USE_GROFF =	Yes

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
