# $OpenBSD: Makefile,v 1.38 2003/01/31 15:53:50 brad Exp $

COMMENT=		"send/receive faxes and share modems"
DISTNAME=		hylafax-4.1.5
CATEGORIES=		comms

FLAVORS=		a4
FLAVOR?=
HOMEPAGE=		http://www.HylaFAX.org/

MASTER_SITES=		ftp://ftp.hylafax.org/source/

# License: BSD
# http://www.hylafax.org/HylaFAQ/copyright.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:ghostscript-*:print/ghostscript/gnu
LIB_DEPENDS=		tiff::graphics/tiff \
			jpeg::graphics/jpeg

CONFIGURE_STYLE=	simple
USE_GMAKE=		Yes

CONFIGURE_ARGS =	--nointeractive
CONFIGURE_ARGS+=	--with-CC="${CC}"
CONFIGURE_ARGS+=	--with-CXX="${CXX}"
CONFIGURE_ARGS+=        --with-INSTALL=""

CONFIGURE_ENV+=		CCOMPILER="${CC}" CXXCOMPILER="${CXX}" \
			GCOPTS="${CFLAGS}" GCXXOPTS="${CXXFLAGS}" \
			PREFIX="${PREFIX}" LOCALBASE="${LOCALBASE}"

.if ${FLAVOR:L} == "a4"
CONFIGURE_ARGS+=	--with-PAGESIZE=A4
.endif

FAKE_FLAGS=	ROOT=${WRKINST} ${DESTDIRNAME}=${WRKINST}

SUID_EXES=	${PREFIX}/sbin/faxgetty ${PREFIX}/sbin/faxq \
		${PREFIX}/bin/faxrm ${PREFIX}/bin/faxalter
post-install:
	@chown uucp.dialer ${SUID_EXES}
	@chmod a=rx,u+s ${SUID_EXES}
	${INSTALL_DATA} ${FILESDIR}/hylafax.sh.sample ${PREFIX}/lib/fax

pre-package:
	@${SUDO} rm -f ${WRKINST}/${PREFIX}/hylafax
	@${SUDO} ln -s ${WRKINST}/var/spool/hylafax ${WRKINST}/${PREFIX}/hylafax

post-package:
	@${SUDO} rm -f ${WRKINST}/${PREFIX}/hylafax

.include <bsd.port.mk>
