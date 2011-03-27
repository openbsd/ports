# $OpenBSD: Makefile,v 1.29 2011/03/27 18:01:49 jasper Exp $

DISTNAME=	sybperl-2.19
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=	m sybdb>=5 ct>=3

SHARED_ONLY=	Yes

COMMENT=	Sybase database access in Perl
HOMEPAGE=	http://www.peppler.org/freeware/sybperl.html
MASTER_SITES=	http://www.peppler.org/downloads/

MODULES=	devel/gettext
LIB_DEPENDS=	databases/freetds

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	SYBASE="${LOCALBASE}"

REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
