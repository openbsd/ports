# $OpenBSD: Makefile,v 1.1.1.1 2007/12/19 16:09:34 ajacoutot Exp $

COMMENT=	Openbox menu editor

DISTNAME=	obmenu-1.0
CATEGORIES=	x11

HOMEPAGE=	http://obmenu.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=obmenu/}

MODULES=	lang/python
RUN_DEPENDS=	::x11/py-gtk2

pre-configure:
	@find ${WRKSRC} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/python,${MODPY_BIN},g'

.include <bsd.port.mk>
