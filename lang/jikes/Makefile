# $OpenBSD: Makefile,v 1.10 2005/02/24 13:20:41 alek Exp $
COMMENT="compile Java source into .class files (quickly!)"

# Jikes, a fast Java compiler. As of OpenBSD 2.8, compilation needs
# lots of space - up your limits and/or add swap space as appropriate.

DISTNAME=	jikes-1.18
CATEGORIES=	lang
HOMEPAGE=	http://oss.software.ibm.com/developerworks/opensource/jikes/
MASTER_SITES=	ftp://www-126.ibm.com/pub/jikes/1.18/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# IBM Public License
PERMIT_PACKAGE_CDROM=	"commercial contributor must indemnify all others"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"commercial contributor must indemnify all others"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

VMEM_WARNING=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
