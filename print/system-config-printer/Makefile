# $OpenBSD: Makefile,v 1.13 2009/06/08 19:24:43 ajacoutot Exp $

COMMENT=		printer (CUPS) administration tool

DISTNAME=		system-config-printer-1.0.15
CATEGORIES=		print sysutils

HOMEPAGE=		http://cyberelk.net/tim/software/system-config-printer/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cyberelk.net/tim/data/system-config-printer/1.0.x/
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python \
			textproc/intltool

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::textproc/xmlto
RUN_DEPENDS=		::devel/desktop-file-utils \
			::devel/gettext \
			::devel/py-notify \
			::print/py-cups \
			::textproc/py-xml \
			::x11/dbus-python \
			::x11/gnome/py-gnome

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

SUBST_FILES=		applet.py cupshelpers/cupshelpers.py pysmb.py \
			system-config-printer.py \
			manage-print-jobs.desktop.in \
			my-default-printer.desktop.in \
			print-applet.desktop.in \
			system-config-printer.desktop.in \
			troubleshoot/SchedulerNotRunning.py \
			Makefile.in

FAKE_FLAGS=	dbusdir=${PREFIX}/share/examples/system-config-printer/dbus-1/system.d/ \
		autostartdir=${PREFIX}/share/examples/system-config-printer/xdg/autostart/

pre-configure:
	find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g;' \
			-e 's,/usr/bin/python,${MODPY_BIN},g'
.for f in ${SUBST_FILES}
	${SUBST_CMD} ${WRKSRC}/$f
.endfor

.include <bsd.port.mk>
