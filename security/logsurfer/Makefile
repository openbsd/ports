# $OpenBSD: Makefile,v 1.19 2009/11/27 21:30:38 jakob Exp $

COMMENT=	processes logfiles and perform certain actions

VERSION=	1.7
DISTNAME=	logsurfer+-${VERSION}
PKGNAME=	logsurfer-${VERSION}
CATEGORIES=	security

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

HOMEPAGE=	http://www.crypt.gen.nz/logsurfer/

MASTER_SITES=	http://kerryt.orcon.net.nz/ \
		http://www.crypt.gen.nz/logsurfer/

CONFIGURE_STYLE=	gnu

NO_REGRESS=	Yes

NOT_FOR_ARCHS=	${LP64_ARCHS}

.include <bsd.port.mk>
