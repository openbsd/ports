# $OpenBSD: Makefile,v 1.12 2012/08/23 15:52:47 sthen Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += asn1 c crypto gssapi krb5

CPAN_AUTHOR=	AGROLMS

MODCPAN_EXAMPLES=	Yes

CONFIGURE_ARGS=	--gssapi_libs="-lgssapi -lkrb5 -lasn1 -lcrypto" \
		--gssapi_inc="-I/usr/include/kerberosV" \
		CCFLAGS="-DHEIMDAL"

# Need to have a Kerberos ticket
REGRESS_IS_INTERACTIVE= Yes

.include <bsd.port.mk>
