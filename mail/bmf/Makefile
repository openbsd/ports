# $OpenBSD: Makefile,v 1.2 2002/10/27 17:10:23 lebel Exp $

COMMENT=		"easy to use bayesonian spam filter"
DISTNAME=		bmf-0.9.4
CATEGORIES=		mail
HOMEPAGE=		http://sourceforge.net/projects/bmf

MAINTAINER=		Han Boetes <han@mijncomputer.nl>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bmf/}

CONFIGURE_STYLE=	simple

INSTALL_TARGET=		MANDIR=${PREFIX}/man \
			BINDIR=${PREFIX}/bin \
			install

MAKE_ENV=		CC="${CC}"
DOCS=			README

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bmf
	${INSTALL_DATA} ${WRKSRC}/${DOCS} ${PREFIX}/share/doc/bmf


.include <bsd.port.mk>
