# $OpenBSD: Makefile,v 1.25 2011/07/12 18:06:23 jeremy Exp $

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

FLAVORS =		ruby19
FLAVOR ?=		
.if ${FLAVOR:L:Mruby19}
MODRUBY_REV =		1.9
FULLPKGNAME =		ruby19-hyperestraier-1.0.0
BIN_SUFFIX =		19
.else
BIN_SUFFIX =		
.endif
SUBST_VARS +=		BIN_SUFFIX

WANTLIB=		c m pthread estraier ${MODRUBY_WANTLIB}
MODULES=		lang/ruby

LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS} \
			textproc/hyperestraier

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV =		RUBY=${RUBY} RDOC=`echo ${RUBY} | sed s/ruby/rdoc/`

WRKSRC=			${WRKDIST}/rubynative

post-install:
.if ${FLAVOR:L:Mruby19}
	mv ${PREFIX}/bin/estcmd{,19}.rb
.endif
	${INSTALL_DATA_DIR} ${MODRUBY_EXAMPLEDIR}/hyperestraier
	${INSTALL_DATA} ${WRKSRC}/example/*.rb \
		${MODRUBY_EXAMPLEDIR}/hyperestraier

.include <bsd.port.mk>
