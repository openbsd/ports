# $OpenBSD: Makefile,v 1.52 2009/05/02 09:56:44 djm Exp $

COMMENT=	mailing list manager with web interface

DISTNAME=	mailman-2.1.12
PKGNAME=	${DISTNAME}
CATEGORIES=	mail www

HOMEPAGE=	http://www.gnu.org/software/mailman/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mailman/}
EXTRACT_SUFX=		.tgz

MODULES=		lang/python

NO_REGRESS=		Yes

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

FLAVORS=	postfix
FLAVOR?=
.if ${FLAVOR:L:Mpostfix}
CONFIGURE_ARGS+=--with-mail-gid=_mailman
.else
CONFIGURE_ARGS+=--with-mail-gid=daemon
.endif

SCRIPTS=	Mailman/Archiver/pipermail.py \
		Mailman/Post.py \
		bin/msgfmt.py \
		messages/Makefile.in \
		templates/ru/s2s.py \
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
	@${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${MMDOC}
	@${INSTALL_DATA_DIR} ${MMEXAMPLES}
	@mv ${WRKINST}/var/spool/mailman/data/sitelist.cfg ${MMEXAMPLES}

.include <bsd.port.mk>
