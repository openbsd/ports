# $OpenBSD: Makefile,v 1.12 2014/03/26 17:38:27 gonzalo Exp $

COMMENT=		utilities for jailing a user or process

DISTNAME=		jailkit-2.17
CATEGORIES=		security sysutils

HOMEPAGE=		http://olivier.sessink.nl/jailkit/

MASTER_SITES=		${HOMEPAGE}

# BSD - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
WANTLIB += c pthread

NO_TEST=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		PYTHONINTERPRETER=${MODPY_BIN} \
			PROCMAILPATH=${LOCALBASE}/bin/procmail
CONFIGURE_ARGS=		--sysconfdir=${SYSCONFDIR}

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples

MAN_P=  jailkit.8 jk_check.8 jk_chrootlaunch.8 jk_chrootsh.8 jk_cp.8 \
	jk_init.8 jk_jailuser.8 jk_lsh.8 jk_socketd.8 jk_uchroot.8 \
	jk_update.8

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ini/jk_init.ini
	for i in ${MAN_P}; do \
		${SUBST_CMD} ${WRKSRC}/man/$${i}; done

post-install:
	# recreate the .pyc file, otherwise it would change
	# after installation
	rm ${PREFIX}/share/jailkit/jk_lib.pyc
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/jailkit

.include <bsd.port.mk>
