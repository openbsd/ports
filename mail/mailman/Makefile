# $OpenBSD: Makefile,v 1.15 2002/11/22 16:43:45 sturm Exp $

COMMENT=	"mailing list manager with web interface"

DISTNAME=	mailman-2.0.12
CATEGORIES=     mail

HOMEPAGE=	http://www.gnu.org/software/mailman/mailman.html

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mailman/}
EXTRACT_SUFX=		.tgz

PYTHON_VER=		2.2
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}

NO_REGRESS=		Yes

MMDOC=			${PREFIX}/share/doc/mailman
MMEXAMPLES=		${PREFIX}/share/examples/mailman
MMHOME=			${PREFIX}/lib/mailman
MMSPOOL=		/var/spool/mailman

FAKE_FLAGS=		DIRSETGID=":"

CONFIGURE_STYLE=	simple
# Adding DESTDIR by hand, because 'CONFIGURE_STYLE= gnu dest' overwrites
# our prefix without touching var-prefix
CONFIGURE_ARGS+=	--with-var-prefix='$${${DESTDIRNAME}}${MMSPOOL}' \
			--prefix='$${${DESTDIRNAME}}${MMHOME}' \
			--with-python=${LOCALBASE}/bin/python${PYTHON_VER}

FLAVORS=postfix
FLAVOR?=
.if ${FLAVOR:L:Mpostfix}
CONFIGURE_ARGS+=--with-mail-gid=nobody
.else
CONFIGURE_ARGS+=--with-mail-gid=daemon
.endif

post-configure:
	@perl -i -pe 's#\$${${DESTDIRNAME}}##g' \
		${WRKSRC}/misc/paths.py ${WRKSRC}/Mailman/Defaults.py \
		${WRKSRC}/cron/crontab.in

post-install:
	@${INSTALL_DATA_DIR} ${MMDOC}
	@${INSTALL_DATA_DIR} ${MMEXAMPLES}
	@for file in FAQ NEWS README* UPGRADING; do \
	    ${INSTALL_DATA} ${WRKDIST}/$$file ${MMDOC}; \
	done
	@${INSTALL_DATA} files/README.OpenBSD ${MMDOC}
	@for file in filters/bowa-strip misc/pending_subscriptions.db; do \
	    ${INSTALL_DATA} ${WRKDIST}/$$file ${MMEXAMPLES}; \
	done

.include <bsd.port.mk>
