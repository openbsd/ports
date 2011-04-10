# $OpenBSD: Makefile,v 1.11 2011/04/10 20:14:23 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the GSSAPIv2 library

MODULES=	cpan
DISTNAME=	GSSAPI-0.28
CATEGORIES=	security
USE_GROFF =	Yes

HOMEPAGE=	http://perlgssapi.sourceforge.net/

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	asn1 crypto gssapi krb5

CPAN_AUTHOR=	AGROLMS

MODCPAN_EXAMPLES=	Yes

CONFIGURE_ARGS=	--gssapi_libs="-lgssapi -lkrb5 -lasn1 -lcrypto" \
		--gssapi_inc="-I/usr/include/kerberosV" \
		CCFLAGS="-DHEIMDAL"

# Need to have a Kerberos ticket
REGRESS_IS_INTERACTIVE= Yes

.include <bsd.port.mk>
