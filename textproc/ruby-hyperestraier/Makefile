# $OpenBSD: Makefile,v 1.15 2009/11/09 17:45:24 bernd Exp $

SHARED_ONLY=		Yes

COMMENT=		Ruby interface to hyperestraier

DISTNAME=		hyperestraier-1.4.13
PKGNAME=		ruby-hyperestraier-1.0.0p11
CATEGORIES=		textproc

HOMEPAGE=		http://hyperestraier.sourceforge.net/

MAINTAINER=		Jeremy Evans <openbsd@jeremyevans.net>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hyperestraier/}

WANTLIB=		c m
MODULES=		lang/ruby

LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS} \
			estraier.>=8::textproc/hyperestraier

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

WRKSRC=			${WRKDIST}/rubynative

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ruby-hyperestraier
	${INSTALL_DATA} ${WRKSRC}/example/*.rb \
		${PREFIX}/share/examples/ruby-hyperestraier
	cd ${WRKSRC} && ${LOCALBASE}/bin/rdoc -o ${PREFIX}/share/doc/ruby-hyperestraier \
		estraier-doc.rb

.include <bsd.port.mk>
