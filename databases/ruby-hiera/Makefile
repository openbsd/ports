# $OpenBSD: Makefile,v 1.1.1.1 2013/02/03 16:44:03 jasper Exp $

COMMENT=		simple pluggable hierarchical database

DISTNAME=		hiera-1.1.2
CATEGORIES=		databases

HOMEPAGE=		https://github.com/puppetlabs/hiera

MODULES=		lang/ruby

# Apachev2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-json_pure,${MODRUBY_FLAVOR}

EXAMPLE_DIR=		${PREFIX}/share/examples/ruby-${GEM_MAN_SUFFIX}-hiera/

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_DATA} ${FILESDIR}/hiera.yaml ${EXAMPLE_DIR}

.include <bsd.port.mk>
