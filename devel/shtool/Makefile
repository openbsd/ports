# $OpenBSD: Makefile,v 1.20 2000/06/22 04:39:07 brad Exp $
# $FreeBSD: Makefile,v 1.3 1999/04/29 15:32:56 rse Exp $

DISTNAME=	shtool-1.4.9
CATEGORIES=	devel
NEED_VERSION=	1.307
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= shtool

HOMEPAGE=	http://www.gnu.org/software/shtool/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

FAKE_FLAGS=	prefix='${WRKINST}${PREFIX}'

.include <bsd.port.mk>
