# $OpenBSD: Makefile,v 1.24 2009/08/01 14:11:45 sthen Exp $

DISTNAME=	sybperl-2.18
CATEGORIES=	databases perl5
# N.B. no p5- prefix
PKGNAME=	${DISTNAME}p4

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

SHARED_ONLY=		Yes

COMMENT=	Sybase database access in Perl
HOMEPAGE=	http://www.peppler.org/freeware/sybperl.html
MASTER_SITES=	http://www.peppler.org/downloads/

MODULES=	devel/gettext
LIB_DEPENDS=	sybdb.>=5,ct.>=3::databases/freetds

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	SYBASE="${LOCALBASE}"
NO_REGRESS=	Yes

.include <bsd.port.mk>
