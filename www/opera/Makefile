# $OpenBSD: Makefile,v 1.82 2013/07/16 06:47:16 ajacoutot Exp $

ONLY_FOR_ARCHS=	i386
SHARED_ONLY=	Yes

COMMENT=	fast and customizable WWW browser

V=		12.16
OPERA_BUILD=	1860
DISTNAME=	opera-${V}-${OPERA_BUILD}.i386.linux
PKGNAME=	opera-${V}
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	www

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=	http://www.opera.com/

PERMIT_PACKAGE_CDROM=	Commercial software
PERMIT_PACKAGE_FTP=	Commercial software
PERMIT_DISTFILES_FTP=	Commercial software

MASTER_SITES=	ftp://ftp.opera.com/pub/opera/linux/${V:S/.//}/

RUN_DEPENDS=	devel/desktop-file-utils \
		emulators/fedora/base>=10.0 \
		emulators/fedora/cups>=10.0 \
		misc/shared-mime-info \
		x11/gtk+2,-guic

NO_BUILD=	Yes
NO_TEST=	Yes

post-extract:
	mv ${WRKSRC}/share/man ${WRKSRC}/man
	cd ${WRKSRC}/man/man1 && gunzip *.gz

do-install:
.for i in lib man share
	${INSTALL_DATA_DIR} ${PREFIX}/${i}
	cd ${WRKSRC}/${i} && \
		tar cf - * | tar xf - -C ${PREFIX}/${i}
.endfor
	${SUBST_CMD} ${WRKSRC}/opera
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/opera ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opera
	${INSTALL_DATA} ${FILESDIR}/operaprefs_default.ini \
	    ${PREFIX}/share/examples/opera/operaprefs_default.ini
	${INSTALL_DATA} ${FILESDIR}/operaprefs_fixed.ini \
	    ${PREFIX}/share/examples/opera/operaprefs_fixed.ini
	perl -pi -e 's,\@\@{PREFIX},${TRUEPREFIX},g;' \
		-e 's,\@\@{_SUFFIX},,g;' \
		-e 's,\@\@{SUFFIX},,g' \
		${PREFIX}/share/applications/opera-browser.desktop

.include <bsd.port.mk>
