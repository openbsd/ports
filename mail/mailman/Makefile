# $OpenBSD: Makefile,v 1.81 2015/04/09 15:37:08 okan Exp $

COMMENT=	mailing list manager with web interface

DISTNAME=	mailman-2.1.20
CATEGORIES=	mail www

HOMEPAGE=	https://www.gnu.org/software/mailman/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mailman/}
EXTRACT_SUFX=		.tgz

MODULES=		lang/python

BUILD_DEPENDS=		net/py-dnspython
RUN_DEPENDS=		net/py-dnspython

NO_TEST=		Yes

MMDOC=			${PREFIX}/share/doc/mailman
MMEXAMPLES=		${PREFIX}/share/examples/mailman
MMHOME=			${PREFIX}/lib/mailman
MMSPOOL=		/var/spool/mailman

FAKE_FLAGS=		DIRSETGID=":"

# gnu still breaks the pathes as prefix is actually mailman's home
CONFIGURE_STYLE=	simple
# do not use --without-permcheck as this requires the mailman user and group
# to exist, otherwise there will be problems running mailman
CONFIGURE_ARGS+=	--prefix='${MMHOME}' \
			--with-mailhost=localhost.my.domain \
			--with-python=${MODPY_BIN} \
			--with-urlhost=localhost.my.domain \
			--with-var-prefix='${MMSPOOL}' \
			--without-permcheck \
			--with-username=_mailman \
			--with-groupname=_mailman

FLAVORS=	postfix sendmail
FLAVOR?=
.if ${FLAVOR:Mpostfix}
CONFIGURE_ARGS+=--with-mail-gid=_mailman
.elif ${FLAVOR:Msendmail}
CONFIGURE_ARGS+=--with-mail-gid=daemon
.else
CONFIGURE_ARGS+=--with-mail-gid=_smtpd
.endif

SCRIPTS=	Mailman/Archiver/pipermail.py \
		Mailman/Post.py \
		bin/msgfmt.py \
		tests/onebounce.py

pre-configure:
.for SCRIPT in ${SCRIPTS}
	@${SUBST_CMD} ${WRKSRC}/${SCRIPT}
.endfor

post-install:
	@${INSTALL_DATA_DIR} ${MMDOC}
	@for file in FAQ NEWS README* UPGRADING; do \
	    ${INSTALL_DATA} ${WRKDIST}/$$file ${MMDOC}; \
	done
	@${INSTALL_DATA_DIR} ${MMEXAMPLES}
	@mv ${WRKINST}/var/spool/mailman/data/sitelist.cfg ${MMEXAMPLES}

.include <bsd.port.mk>
