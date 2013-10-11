# $OpenBSD: Makefile,v 1.17 2013/10/11 23:50:52 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the GSSAPIv2 library

MODULES=	cpan
DISTNAME=	GSSAPI-0.28
REVISION=	3
CATEGORIES=	security

HOMEPAGE=	http://perlgssapi.sourceforge.net/

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 com_err crypto gssapi heimbase
WANTLIB += krb5 roken wind

CPAN_AUTHOR=	AGROLMS

MODCPAN_EXAMPLES=	Yes

# Need to have a Kerberos ticket
TEST_IS_INTERACTIVE= Yes

.include <bsd.port.mk>
