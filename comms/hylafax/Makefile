# $OpenBSD: Makefile,v 1.34 2002/03/24 17:46:42 pvalchev Exp $

BROKEN=			"doesn't fake properly"

COMMENT=		"send/receive faxes and share modems"
DISTNAME=		hylafax-4.1
CATEGORIES=		comms
NEED_VERSION=		1.499

FLAVORS=		a4
FLAVOR?=
HOMEPAGE=		http://www.HylaFAX.org/

MASTER_SITE_SUBDIR=	source
MASTER_SITES=	ftp://ftp.hylafax.org/%SUBDIR%/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:ghostscript-*:print/ghostscript/gnu
LIB_DEPENDS=		tiff::graphics/tiff

CONFIGURE_STYLE=	simple
USE_GMAKE=		Yes
#SEPARATE_BUILD=	No

CONFIGURE_ARGS =	--nointeractive
CONFIGURE_ARGS+=	--with-CC="${CC}"
CONFIGURE_ARGS+=	--with-CXX="${CXX}"
CONFIGURE_ARGS+=	--with-DIR_BIN="${PREFIX}/bin"
CONFIGURE_ARGS+=	--with-DIR_HTML="${PREFIX}/share/doc/hylafax"
CONFIGURE_ARGS+=	--with-DIR_LIBDATA="${PREFIX}/lib/fax"
CONFIGURE_ARGS+=	--with-DIR_LIBEXEC="${PREFIX}/libexec"
CONFIGURE_ARGS+=	--with-DIR_LIBTIFF="-L${PREFIX}/lib -ltiff"
CONFIGURE_ARGS+=	--with-DIR_MAN="${PREFIX}/man"
CONFIGURE_ARGS+=	--with-DIR_SBIN="${PREFIX}/sbin"
CONFIGURE_ARGS+=	--with-LIBREGEX=
CONFIGURE_ARGS+=	--with-INSTALL=
CONFIGURE_ARGS+=	--with-MAKE="${GMAKE}"
CONFIGURE_ARGS+=	--with-PATH_AFM="${PREFIX}/share/ghostscript/fonts"
CONFIGURE_ARGS+=	--with-PATH_GSRIP="${PREFIX}/bin/gs"
CONFIGURE_ARGS+=	--with-PATH_PSRIP="${PREFIX}/bin/gs"
CONFIGURE_ARGS+=	--with-PATH_VGETTY="${PREFIX}/bin/vgetty"
CONFIGURE_ARGS+=	--with-REGEX=no
CONFIGURE_ARGS+=	--with-REGEXINC="/usr/include"
CONFIGURE_ARGS+=	--with-SYSUID=root
CONFIGURE_ARGS+=	--with-SYSVINIT=no
CONFIGURE_ARGS+=	--with-TIFFINC="${PREFIX}/include"

.if ${FLAVOR:L} == "a4"
CONFIGURE_ARGS+=	--with-PAGESIZE=A4
.endif

SUID_EXES=	${PREFIX}/sbin/faxgetty ${PREFIX}/sbin/faxq \
		${PREFIX}/bin/faxrm ${PREFIX}/bin/faxalter
post-install:
	@: chown uucp.dialer ${SUID_EXES}
	@: chmod a=rx,u+s ${SUID_EXES}
	${INSTALL_DATA} ${FILESDIR}/hylafax.sh.sample ${PREFIX}/lib/fax

pre-package:
	rm -f ${WRKINST}/${PREFIX}/hylafax
	ln -s ${WRKINST}/var/spool/hylafax ${WRKINST}/${PREFIX}/hylafax

post-package:
	rm -f ${WRKINST}/${PREFIX}/hylafax

FAKE_FLAGS=ROOT=${WRKINST} ${DESTDIRNAME}=${WRKINST}

.include <bsd.port.mk>
