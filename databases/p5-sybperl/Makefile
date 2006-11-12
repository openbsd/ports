# $OpenBSD: Makefile,v 1.21 2006/11/12 23:28:42 jcs Exp $

DISTNAME=	sybperl-2.18
CATEGORIES=	databases perl5
PKGNAME=	${DISTNAME}p2

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

SHARED_ONLY=		Yes

COMMENT=	"Sybase database access in Perl"
HOMEPAGE=	http://www.peppler.org/freeware/sybperl.html
MASTER_SITES=	http://www.peppler.org/downloads/

MODULES=	devel/gettext
LIB_DEPENDS=	tds.>=4,sybdb.>=5,ct.>=3::databases/freetds

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	SYBASE="${LOCALBASE}"
NO_REGRESS=	Yes

.include <bsd.port.mk>
