# $OpenBSD: Makefile,v 1.2 2003/04/23 22:46:13 jason Exp $

COMMENT=	"text to speech utility"

VERSION=	1.2
DISTNAME=	flite-${VERSION}-release
PKGNAME=	flite-${VERSION}
DISTNAME=	${PKGNAME}-release
CATEGORIES=	audio

HOMEPAGE=	http://www.cmuflite.org/

MAINTAINER=	Jason L. Wright <jason@openbsd.org>

PERMIT_PACKAGE_CDROM=   No, mods have to be clearly marked
PERMIT_PACKAGE_FTP=     No, mods have to be clearly marked
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www.speech.cs.cmu.edu/flite/packed/flite-${VERSION}/

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS= ${CONFIGURE_SHARED}

USE_GMAKE=	Yes
NO_REGRESS=	Yes
VMEM_WARNING=	Yes

.include <bsd.port.mk>
