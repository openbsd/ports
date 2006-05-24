# $OpenBSD: Makefile,v 1.12 2006/05/24 15:15:41 dhartmei Exp $

COMMENT=	"packet filter statistics visualization"
COMMENT-daemon=	"pfstat daemon"

DISTNAME=	pfstat-2.2

PKGNAME-daemon=	${PKGNAME:S/-/d-/}
CATEGORIES=	net
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/pfstat.html

MAINTAINER=	Daniel Hartmeier <dhartmei@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-daemon
SUBPACKAGE?=

WANTLIB=		c

BUILD_DEPENDS=		::graphics/gd

.if defined(PACKAGING)
. if ${SUBPACKAGE} != "-daemon"
WANTLIB+=		jpeg m png z

MODULES=		converters/libiconv

LIB_DEPENDS=		gd.20::graphics/gd
. endif
.endif

pre-configure:
	@perl -pi -e "s,/etc,${SYSCONFDIR}," ${WRKSRC}/pfstat.c \
		${WRKSRC}/pfstat.8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pfstat ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pfstat.8 ${PREFIX}/man/man8
	${INSTALL_PROGRAM} ${WRKSRC}/pfstatd/pfstatd ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pfstatd/pfstatd.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pfstat
	$(INSTALL_DATA) ${WRKSRC}/pfstat.conf.example	\
			${PREFIX}/share/examples/pfstat/pfstat.conf

.include <bsd.port.mk>
