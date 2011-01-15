# $OpenBSD: Makefile,v 1.24 2011/01/15 01:09:43 naddy Exp $

SHARED_ONLY=		Yes

COMMENT=		Ruby interface to hyperestraier

DISTNAME=		hyperestraier-1.4.13
PKGNAME=		ruby-hyperestraier-1.0.0
REVISION =		18
CATEGORIES=		textproc

HOMEPAGE=		http://hyperestraier.sourceforge.net/

MAINTAINER=		Jeremy Evans <jeremy@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hyperestraier/}

WANTLIB=		c m pthread estraier ${MODRUBY_WANTLIB}
MODULES=		lang/ruby

LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS} \
			textproc/hyperestraier

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

WRKSRC=			${WRKDIST}/rubynative

post-install:
	${INSTALL_DATA_DIR} ${MODRUBY_EXAMPLEDIR}/hyperestraier
	${INSTALL_DATA} ${WRKSRC}/example/*.rb \
		${MODRUBY_EXAMPLEDIR}/hyperestraier

.include <bsd.port.mk>
