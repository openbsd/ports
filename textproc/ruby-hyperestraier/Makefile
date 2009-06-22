# $OpenBSD: Makefile,v 1.13 2009/06/22 17:00:24 naddy Exp $

SHARED_ONLY=		Yes

COMMENT=		Ruby interface to hyperestraier

DISTNAME=		hyperestraier-1.4.13
PKGNAME=		ruby-hyperestraier-1.0.0p10
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

LIB_DEPENDS=		ruby.>=1::lang/ruby \
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
