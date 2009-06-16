# $OpenBSD: Makefile,v 1.7 2009/06/16 11:45:28 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	HP Unix imaging and printing
COMMENT-hpijs=	HP Inkjet driver for ghostscript
COMMENT-docs=	html documentation for HPLIP

V=		2.7.12
DISTNAME=	hplip-${V}
PKGNAME-main=	${DISTNAME}p3
PKGNAME-hpijs=	hpijs-${V}p2
PKGNAME-docs=	hplip-docs-${V}p1

SHARED_LIBS+=	hpmud		0.0	# .0.0
SHARED_LIBS+=	hpip		0.0	# .0.1

CATEGORIES=	print

HOMEPAGE=	http://hplip.sourceforge.net/

# GPLv2 - MIT (backend) - BSD (hpijs)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=hplip/}

MULTI_PACKAGES=	-main -hpijs -docs

MODPY_RUNDEP=	No

WANTLIB += avahi-client avahi-common c crypto dbus-1 exif gphoto2
WANTLIB += gphoto2_port jpeg ltdl m pthread tiff usb z

LIB_DEPENDS=	sane.>=1::graphics/sane-backends \
		netsnmp.>=7::net/net-snmp \
		cups.>=3::print/cups

LIB_DEPENDS-main=${LIB_DEPENDS} \
		hpip,hpmud::${BASE_PKGPATH},-hpijs
RUN_DEPENDS-main=${MODPY_RUN_DEPENDS} \
		::print/py-reportlab/reportlab \
		::x11/py-qt3 \
		:desktop-file-utils-*:devel/desktop-file-utils

WANTLIB-hpijs=	${WANTLIB} stdc++
RUN_DEPENDS-hpijs=::print/foomatic-filters

WANTLIB-docs=
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=
PKG_ARCH-docs=	*

MODULES=	devel/gettext lang/python
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--with-hpppddir=${LOCALBASE}/share/foomatic/db/source/PPD/HP \
		--with-cupsbackenddir=${LOCALBASE}/libexec/cups/backend \
		--with-icondir=${LOCALBASE}/share/applications \
		--with-docdir=${PREFIX}/share/doc/hplip \
		--disable-dependency-tracking \
		--disable-pp-build \
		--enable-gui-build \
		--enable-foomatic-ppd-install \
		--disable-foomatic-xml-install
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		am_cv_pathless_PYTHON=python${MODPY_VERSION}

post-extract:
	@find ${WRKSRC} -type d -name CVS -exec rm -rf {} \; 2> /dev/null

pre-configure:
	@find ${WRKSRC} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'
	${SUBST_CMD} ${WRKSRC}/prnt/hpijs/globals.cpp \
		${WRKSRC}/base/g.py \
		${WRKSRC}/base/service.py \
		${WRKSRC}/installer/core_install.py \
		${WRKSRC}/installer/dcheck.py \
		${WRKSRC}/fax/backend/hpfax.py \
		${WRKSRC}/hpssd.py \
		${WRKSRC}/check.py \
		${WRKSRC}/doc/release_notes.html \
		${WRKSRC}/doc/tech_docs/man_pages/hpssd.html

post-install:
	@ln -s ${TRUEPREFIX}/share/hplip/hpssd.py ${PREFIX}/sbin/hpssd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hplip
	${INSTALL_DATA} ${WRKSRC}/hplip.conf \
		${PREFIX}/share/examples/hplip
	${INSTALL_DATA_DIR} ${PREFIX}/share/hplip/data/images/distros
	${INSTALL_DATA} ${WRKSRC}/data/images/distros/*.png \
		${PREFIX}/share/hplip/data/images/distros

.include <bsd.port.mk>
