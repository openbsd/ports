# $OpenBSD: Makefile,v 1.1.1.1 2001/03/26 16:48:21 ian Exp $
COMMENT="compile Java source into .class files (quickly!)."

# Jikes, a fast Java compiler. As of OpenBSD 2.8, compilation needs
# lots of space - up your limits and/or add swap space as appropriate.

DISTNAME=	jikes-1.13
CATEGORIES=	lang
NEED_VERSION=	1.361
HOMEPAGE=	http://oss.software.idm.com/developerworks/projects/jikes/
MASTER_SITES=	http://oss.software.ibm.com/pub/jikes/

MAINTAINER=	ian@openbsd.org

# IBM Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
