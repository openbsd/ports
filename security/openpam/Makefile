# $OpenBSD: Makefile,v 1.4 2014/06/04 08:50:08 robert Exp $

SHARED_ONLY=	Yes

COMMENT=	Pluggable Authentication Module

V=		20121009
DISTNAME=	freebsd_pam-${V}
PKGNAME=	openpam-${V}
REVISION=	1

CATEGORIES=	security

SHARED_LIBS+=	pam	5.0

HOMEPAGE=	http://www.openpam.org/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += util

MASTER_SITES=	http://nerd.hu/distfiles/

WRKSRC=	${WRKDIST}/libpam

MAKE_ENV+=	PAM_MOD_DIR=${TRUEPREFIX}/lib/security

PAM_MODULES=	deny echo exec nologin permit rootok \
		self bsdauth group

pre-build:
	cd ${WRKSRC} && ${MAKE} obj

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/security
	${INSTALL_DATA_DIR} ${PREFIX}/include/security
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pam

	${INSTALL} ${FILESDIR}/system ${PREFIX}/share/examples/pam

.for _l in libpam.a libpam.so.5.0 libpam_p.a
	${INSTALL} ${WRKSRC}/libpam/obj/${_l} ${PREFIX}/lib
.endfor
.for _i in openpam openpam_attr openpam_version pam_appl pam_constants pam_modules pam_types
	${INSTALL} ${WRKDIST}/openpam/include/security/${_i}.h ${PREFIX}/include/security
.endfor
	${INSTALL} ${WRKSRC}/libpam/security/pam_mod_misc.h ${PREFIX}/include/security

.for _m in ${PAM_MODULES}
	${INSTALL} ${WRKSRC}/modules/pam_${_m}/obj/libpam_${_m}.so.5.0 ${PREFIX}/lib/security/pam_${_m}.so
	${INSTALL} ${WRKSRC}/modules/pam_${_m}/pam_${_m}.8 ${PREFIX}/man/man8
.endfor

.include <bsd.port.mk>
