# $OpenBSD: Makefile,v 1.4 2002/11/01 17:38:05 lebel Exp $

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
DOCS=			README ${FILESDIR}/OpenBSD-bmf-mini-howto.html

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bmf
	${INSTALL_DATA} ${WRKSRC}/${DOCS} ${PREFIX}/share/doc/bmf


.include <bsd.port.mk>
