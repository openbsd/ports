# $OpenBSD: Makefile,v 1.34 2016/03/20 16:36:33 naddy Exp $

DISTNAME=	sybperl-2.19
PKGNAME=	p5-${DISTNAME}
REVISION=	2
CATEGORIES=	databases perl5

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	c m perl sybdb>=5 ct>=3

COMMENT=	Sybase database access in Perl
HOMEPAGE=	http://www.peppler.org/freeware/sybperl.html
MASTER_SITES=	http://www.peppler.org/downloads/

MODULES=	devel/gettext
LIB_DEPENDS=	databases/freetds

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	SYBASE="${LOCALBASE}"

TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
