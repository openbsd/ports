# $OpenBSD: Makefile,v 1.1.1.1 2002/10/22 02:07:34 lebel Exp $

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


DOCS=			README

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bmf
	${INSTALL_DATA} ${WRKSRC}/${DOCS} ${PREFIX}/share/doc/bmf


.include <bsd.port.mk>
