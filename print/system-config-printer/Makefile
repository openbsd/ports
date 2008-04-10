# $OpenBSD: Makefile,v 1.1.1.1 2008/04/10 10:23:04 jasper Exp $

COMMENT=		printer (CUPS) administration tool

DISTNAME=		system-config-printer-0.9.90
CATEGORIES=		print sysutils

HOMEPAGE=		http://cyberelk.net/tim/software/system-config-printer/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cyberelk.net/tim/data/system-config-printer/
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python \
			textproc/intltool

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/desktop-file-utils \
			::devel/gettext \
			::devel/py-notify \
			::print/py-cups \
			::textproc/py-xml \
			::textproc/xmlto \
			::x11/dbus-python \
			::x11/gnome/py-gnome

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

SUBST_FILES=		applet.py cupshelpers.py pysmb.py \
			system-config-printer.py my-default-printer \
			system-config-printer system-config-printer-applet \
			manage-print-jobs.desktop.in \
			my-default-printer.desktop.in \
			print-applet.desktop.in \
			system-config-printer.desktop.in

pre-configure:
	find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g;' \
			-e 's,/usr/bin/python,${MODPY_BIN},g'
.for f in ${SUBST_FILES}
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g;' \
		-e 's,!!PREFIX!!,${PREFIX},g;' \
		-e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g' \
			${WRKSRC}/$f
.endfor

.include <bsd.port.mk>
