# $OpenBSD: Makefile,v 1.16 2013/06/20 08:26:14 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the GSSAPIv2 library

MODULES=	cpan
DISTNAME=	GSSAPI-0.28
REVISION=	3
CATEGORIES=	security
USE_GROFF =	Yes

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
