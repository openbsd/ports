# $OpenBSD: Makefile,v 1.37 2005/04/23 14:59:53 espie Exp $

COMMENT=	"GNU gettext"

DISTNAME=	gettext-0.10.40
PKGNAME=	${DISTNAME}p3
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=gettext/}

HOMEPAGE=	http://www.gnu.org/software/gettext/

MODULES=	converters/libiconv

MAINTAINER=	Brad Smith <brad@openbsd.org>

FAKE=lib
# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --with-included-gettext
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${WRKBUILD}/intl/.libs -L${DEPBASE}/lib"

EXTRA_LOCALES=bg en eo fi he hu hr lv nb ro sk uk zh_CN zh_TW

post-install:
	${INSTALL_DATA} ${WRKSRC}/misc/po-mode.el \
		${PREFIX}/share/gettext/po-mode.el
	@cd ${PREFIX}/lib && \
		perl -pi -e s#'-L${WRKBUILD}/intl/.libs '#''#g \
			libintl.la
	@for l in ${EXTRA_LOCALES}; do \
		${INSTALL_DATA_DIR} ${PREFIX}/share/locale/$$l/LC_MESSAGES; \
	done

do-regress:
	@cd ${WRKBUILD}/tests && ${MAKE_PROGRAM} check-TESTS

.include <bsd.port.mk>
