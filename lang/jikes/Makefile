# $OpenBSD: Makefile,v 1.11 2005/03/27 01:04:46 ian Exp $

COMMENT="compile Java source into .class files (quickly!)"

# Jikes, a fast Java compiler. 

DISTNAME=	jikes-1.22
CATEGORIES=	lang
HOMEPAGE=	http://oss.software.ibm.com/developerworks/opensource/jikes/
MASTER_SITES=	ftp://www-126.ibm.com/pub/jikes/1.22/
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
