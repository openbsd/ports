# $OpenBSD: Makefile,v 1.13 2013/03/11 11:41:27 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the GSSAPIv2 library

MODULES=	cpan
DISTNAME=	GSSAPI-0.28
REVISION=	0
CATEGORIES=	security
USE_GROFF =	Yes

HOMEPAGE=	http://perlgssapi.sourceforge.net/

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 c crypto gssapi krb5

CPAN_AUTHOR=	AGROLMS

MODCPAN_EXAMPLES=	Yes

CONFIGURE_ARGS=	--gssapi_libs="-lgssapi -lkrb5 -lasn1 -lcrypto" \
		--gssapi_inc="-I/usr/include/kerberosV" \
		CCFLAGS="-DHEIMDAL"

# Need to have a Kerberos ticket
TEST_IS_INTERACTIVE= Yes

.include <bsd.port.mk>
