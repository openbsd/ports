# $OpenBSD: Makefile,v 1.1.1.1 2006/05/07 13:33:40 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl interface to the GSSAPIv2 library"

DISTNAME=	GSSAPI-0.21
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

HOMEPAGE=	http://perlgssapi.sourceforge.net/

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/A/AG/AGROLMS/}

WANTLIB=	asn1 crypto gssapi krb5

CONFIGURE_STYLE=perl
CONFIGURE_ARGS=	--gssapi_libs="-lgssapi -lkrb5 -lasn1 -lcrypto" \
		--gssapi_inc="-I/usr/include/kerberosV" \
		CCFLAGS="-DHEIMDAL"

.include <bsd.port.mk>
