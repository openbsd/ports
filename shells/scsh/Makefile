# $OpenBSD: Makefile,v 1.29 2015/01/20 01:17:52 jca Exp $

NOT_FOR_ARCHS=		${LP64_ARCHS}

COMMENT=		Unix shell embedded in Scheme

DISTNAME=		scsh-0.6.7
CATEGORIES=		lang shells

HOMEPAGE=		http://www.scsh.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m util

MASTER_SITES=		http://ftp.scsh.net/pub/scsh/0.6/ \
			${MASTER_SITE_SOURCEFORGE:=scsh/}

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf

ALL_TARGET=		enough

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/scsh/emacs
	${INSTALL_DATA} ${WRKSRC}/emacs/* ${PREFIX}/share/scsh/emacs/
	@mv ${PREFIX}/lib/scsh/doc ${PREFIX}/share/doc/scsh
	@mv ${PREFIX}/lib/scsh/*/ ${PREFIX}/share/scsh/

.include <bsd.port.mk>
