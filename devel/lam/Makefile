# $OpenBSD: Makefile,v 1.9 2002/05/08 17:19:36 todd Exp $
# Original from: Yannick Cote

DISTNAME=		lam-6.5.1
NEED_VERSION=		1.358
CATEGORIES=     	devel math net comms
COMMENT=		great implementation of the message passing interface

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.lam-mpi.org/download/%SUBDIR%/ \
			http://www.thinkingnerds.com/lam/download/%SUBDIR%/ \
			http://lam.squyres.com/download/%SUBDRI%/ \
			http://lam.fries.net/download/%SUBDIR%/ \
			http://lam.kresge.com/download/%SUBDIR%/
MASTER_SITE_SUBDIR=	files

HOMEPAGE=		http://www.lam-mpi.org/

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config ${WRKSRC}/mpi2c++
CONFIGURE_ARGS+=	--with-rsh="ssh -x"

.include <bsd.port.mk>
