# $OpenBSD: Makefile,v 1.7 2008/10/02 20:39:34 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the GSSAPIv2 library

MODULES=	cpan
DISTNAME=	GSSAPI-0.26
PKGNAME=	p5-${DISTNAME}p0
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
