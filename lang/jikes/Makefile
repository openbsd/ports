# $OpenBSD: Makefile,v 1.7 2002/12/29 20:41:07 fgsch Exp $
COMMENT="compile Java source into .class files (quickly!)"

# Jikes, a fast Java compiler. As of OpenBSD 2.8, compilation needs
# lots of space - up your limits and/or add swap space as appropriate.

DISTNAME=	jikes-1.15
CATEGORIES=	lang
HOMEPAGE=	http://oss.software.ibm.com/developerworks/opensource/jikes/
MASTER_SITES=	http://oss.software.ibm.com/pub/jikes/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# IBM Public License
PERMIT_PACKAGE_CDROM=   "commercial contributor must indemnify all others"
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= "commercial contributor must indemnify all others"
PERMIT_DISTFILES_FTP=   Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
