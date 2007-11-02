# $OpenBSD: Makefile,v 1.1.1.1 2007/11/02 15:48:55 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	HP Unix imaging and printing
COMMENT-hpijs=	HP Inkjet driver for ghostscript
COMMENT-docs=	html documentation for HPLIP

V=		2.7.10
DISTNAME=	hplip-${V}
PKGNAME-main=	${DISTNAME}
PKGNAME-hpijs=	hpijs-${V}
PKGNAME-docs=	hplip-docs-${V}

SHARED_LIBS+=	hpmud		0.0	# .0.0
SHARED_LIBS+=	hpip		0.0	# .0.1
SHARED_LIBS+=	sane-hpaio	0.0	# .1.0

CATEGORIES=	print

HOMEPAGE=	http://hplip.sourceforge.net/

# GPL - MIT (backend) - BSD (hpijs)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=hplip/}

MULTI_PACKAGES=	-main -hpijs -docs

MODPY_RUNDEP=	No

WANTLIB=	c crypto exif gphoto2 gphoto2_port jpeg ltdl m pthread \
		tiff usb z

LIB_DEPENDS=	sane.>=1::graphics/sane-backends \
		netsnmp.>=7::net/net-snmp \
		cups.>=3::print/cups

LIB_DEPENDS-main=${LIB_DEPENDS} \
		hpip,hpmud::${BASE_PKGPATH},-hpijs
RUN_DEPENDS-main=${MODPY_RUN_DEPENDS} \
		::print/py-reportlab/reportlab \
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
		--disable-gui-build \
		--enable-foomatic-ppd-install \
		--disable-foomatic-xml-install
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		am_cv_pathless_PYTHON=python${MODPY_VERSION}

pre-configure:
	@find ${WRKSRC} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/installer/{core_install,dcheck}.py

post-install:
	@ln -s ${TRUEPREFIX}/share/hplip/hpssd.py ${PREFIX}/sbin/hpssd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hplip
	${INSTALL_DATA} ${WRKSRC}/hplip.conf \
		${PREFIX}/share/examples/hplip

.include <bsd.port.mk>
