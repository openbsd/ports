# $OpenBSD: Makefile,v 1.26 2014/04/27 16:39:46 sthen Exp $

COMMENT-main=		UW e-mail client
COMMENT-c-client=	UW c-client mail access routines
COMMENT-imap=		UW IMAP4rev1/POP2/POP3 mail servers
COMMENT-mailutil=	UW IMAP4rev1/POP2/POP3 mail utility
COMMENT-pico=		UW text editor
COMMENT-pilot=		UW file system navigator

V=			2.11
DISTNAME=		alpine-${V}
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS=		c-client 6.0

# grep "PICO version" ${WRKSRC}/pico/pico.h
PICO_V=			5.07
# grep PILOT_VERSION ${WRKSRC}/pico/pilot.c
PILOT_V=		2.99

PKGNAME-main=		alpine-${V}
PKGNAME-c-client=	c-client-${V}
PKGNAME-imap=		imap-uw-${V}
PKGNAME-mailutil=	mailutil-uw-${V}
PKGNAME-pico=		pico-${PICO_V}
PKGNAME-pilot=		pilot-${PILOT_V}

REVISION-main=		1
REVISION-mailutil=	1
REVISION-imap=		2
REVISION-pico=		1
REVISION-pilot=		13
REVISION-c-client=	1

EPOCH-c-client=		0
EPOCH-imap=		0
EPOCH-mailutil=		0

CATEGORIES=		mail
CATEGORIES-main=	mail news
CATEGORIES-c-client=	devel mail
CATEGORIES-pico=	editors
CATEGORIES-pilot=	sysutils

HOMEPAGE=		http://patches.freeiz.com/alpine/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://patches.freeiz.com/alpine/release/src/ \
			https://www.mpeters.org/mirror/

MULTI_PACKAGES=		-main -c-client -imap -mailutil -pico -pilot

WANTLIB += c crypto ncurses ssl

WANTLIB-main=		${WANTLIB} pthread
WANTLIB-c-client=	# empty
WANTLIB-imap=		${WANTLIB}
WANTLIB-mailutil=	${WANTLIB}
WANTLIB-pico=		${WANTLIB} pthread
WANTLIB-pilot=		${WANTLIB} pthread

MODULES=		devel/gettext
BUILD_DEPENDS=		textproc/aspell/core
RUN_DEPENDS-main=	${RUN_DEPENDS} textproc/aspell/core
RUN_DEPENDS-pico=	${RUN_DEPENDS} textproc/aspell/core
RUN_DEPENDS-c-client=	#empty

# Link error: c-client not found!
USE_LIBTOOL=		gnu

SHLIB=			libc-client.so.${LIBc-client_VERSION}
MAKE_FLAGS=		EXTRACFLAGS="${CFLAGS}" \
			SHLIB="${SHLIB}" \
			SHLIBNAME=${SHLIB} \
			CC="${CC}"

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_search_regcomp=-lc \
			ac_cv_search_SSL_library_init="-lcrypto -lssl"
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-system-pinerc=${SYSCONFDIR}/pine.conf \
			--with-system-fixed-pinerc=${SYSCONFDIR}/pine.conf.fixed \
			--with-system-mail-directory=/var/mail \
			--with-ssl-certs-dir=/etc/ssl \
			--with-simple-spellcheck=aspell \
			--with-interactive-spellcheck=aspell \
			--with-c-client-target=bso \
			--with-debug-level=0 \
			--without-ldap \
			--without-tcl \
			--enable-quotas \
			--disable-debug

HEADERS=		c-client.h dummy.h env.h env_unix.h fdstring.h \
			flockcyg.h flocksim.h flstring.h fs.h ftl.h \
			imap4r1.h linkage.c linkage.h mail.h misc.h \
			netmsg.h newsrc.h nl.h nntp.h osdep.h pseudo.h \
			rfc822.h smtp.h sslio.h tcp.h tcp_unix.h unix.h \
			utf8.h utf8aux.h

post-install:
	# alpine, pico, pilot
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/alpine
	${INSTALL_DATA} ${WRKSRC}/doc/tech-notes.txt \
		${WRKSRC}/doc/mailcap.unx \
		${WRKSRC}/doc/mime.types \
		${PREFIX}/share/doc/alpine
	${WRKBUILD}/alpine/alpine -conf > \
		${PREFIX}/share/examples/alpine/pine.conf
	# c-client
	${INSTALL_DATA_DIR} ${PREFIX}/include/c-client
	cd ${WRKSRC}/c-client; ${INSTALL_DATA} ${HEADERS} \
		${PREFIX}/include/c-client
	${INSTALL_DATA} ${WRKBUILD}/c-client/c-client.a \
		${PREFIX}/lib/libc-client.a
	@if [ -f ${WRKBUILD}/imap/c-client/${SHLIB} ]; then \
		${INSTALL_DATA} ${WRKSRC}/c-client/${SHLIB} ${PREFIX}/lib; \
	fi
	# imap-uw
	${INSTALL_PROGRAM} ${WRKBUILD}/imap/imapd/imapd ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKBUILD}/imap/ipopd/ipop2d ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKBUILD}/imap/ipopd/ipop3d ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKBUILD}/imap/mlock/mlock ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKBUILD}/imap/dmail/dmail ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/imap/tmail/tmail ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/imap/src/{imapd,ipopd}/*.8 \
		${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/imap/src/{dmail,tmail}/*.1 \
		${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/imap-uw
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/imap-uw
	${INSTALL_DATA} ${FILESDIR}/c-client.cf \
		${PREFIX}/share/examples/imap-uw
	tar -C ${WRKSRC}/imap/docs -cf - . | \
		tar -C ${PREFIX}/share/doc/imap-uw -xf -
	find ${PREFIX}/share/doc/imap-uw -type f -exec chmod 0644 {} \;
	# mailutil
	${INSTALL_PROGRAM} ${WRKBUILD}/imap/mailutil/mailutil ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/imap/src/mailutil/mailutil.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV +=		NO_SHARED_LIBS=Yes
.endif
