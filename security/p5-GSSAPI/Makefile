# $OpenBSD: Makefile,v 1.4 2007/01/15 17:40:10 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl interface to the GSSAPIv2 library"

MODULES=	cpan
DISTNAME=	GSSAPI-0.23
CATEGORIES=	security

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

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
