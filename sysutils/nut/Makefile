# $OpenBSD: Makefile,v 1.4 2002/03/29 03:03:24 pvalchev Exp $

COMMENT=	"UPS monitoring program supporting many brands"

DISTNAME=	nut-0.44.2
CATEGORIES=	sysutils
NEED_VERSION=	1.402
HOMEPAGE=	http://www.exploits.org/nut/
MASTER_SITES=	${HOMEPAGE}release/

MAINTAINER=	Nathan Binkert <nate@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	cgi
FLAVOR?=

.if ${FLAVOR:L} == "cgi"
LIB_DEPENDS=	gd.18::graphics/gd
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lttf" CFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib"
.endif

CONFIGURE_STYLE= gnu old
CONFIGURE_ARGS= --sysconfdir="${SYSCONFDIR}/nut" \
		--mandir="${PREFIX}/man" \
		--with-modelpath="${PREFIX}/sbin" \
		--with-statepath="/var/db"
.if ${FLAVOR:L} == "cgi"
CONFIGURE_ARGS+= --with-cgipath="${PREFIX}/libexec/nut"
.endif

FAKE_FLAGS=	INSTALLROOT="${WRKINST}"

.if ${FLAVOR:L} == "cgi"
ALL_TARGET=	all cgi
INSTALL_TARGET=	install install-cgi
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nut
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nut/cables
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/nut
	@for i in ${WRKSRC}/docs/* ; do \
		if [ -f "$$i" ]; then \
			${INSTALL_DATA} $$i ${PREFIX}/share/doc/nut ; \
		fi \
	done
	@for i in ${WRKSRC}/docs/cables/* ; do \
		${INSTALL_DATA} $$i ${PREFIX}/share/doc/nut/cables ; \
	done

.include <bsd.port.mk>
