# $OpenBSD: Makefile,v 1.14 2013/06/17 19:31:09 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the GSSAPIv2 library

MODULES=	cpan
DISTNAME=	GSSAPI-0.28
REVISION=	1
CATEGORIES=	security
USE_GROFF =	Yes

HOMEPAGE=	http://perlgssapi.sourceforge.net/

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 com_err crypto gssapi heimbase heimntlm hx509
WANTLIB += krb5 pthread roken wind

CPAN_AUTHOR=	AGROLMS

MODCPAN_EXAMPLES=	Yes

# Need to have a Kerberos ticket
TEST_IS_INTERACTIVE= Yes

.include <bsd.port.mk>
