# $OpenBSD: Makefile,v 1.21 2004/01/02 05:11:08 brad Exp $

COMMENT=	"X11 front end to the MySQL database engine"

DISTNAME=	xmysql-1.10
CATEGORIES=	databases

MASTER_SITES=	${MASTER_SITE_BACKUP}

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	forms.0::x11/xforms \
		lib/mysql/mysqlclient.10::databases/mysql \
		jpeg.62::graphics/jpeg

USE_X11=	Yes
NO_REGRESS=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

.include <bsd.port.mk>
