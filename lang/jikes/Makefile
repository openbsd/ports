# $OpenBSD: Makefile,v 1.4 2001/06/18 04:08:17 kevlo Exp $
COMMENT="compile Java source into .class files (quickly!)"

# Jikes, a fast Java compiler. As of OpenBSD 2.8, compilation needs
# lots of space - up your limits and/or add swap space as appropriate.

DISTNAME=	jikes-1.14
CATEGORIES=	lang
NEED_VERSION=	1.414
HOMEPAGE=	http://oss.software.ibm.com/developerworks/opensource/jikes/
MASTER_SITES=	http://oss.software.ibm.com/pub/jikes/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# IBM Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
