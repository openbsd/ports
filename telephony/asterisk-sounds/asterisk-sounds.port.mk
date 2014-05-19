# $OpenBSD: asterisk-sounds.port.mk,v 1.9 2014/05/19 08:06:30 sthen Exp $

# sync with asterisk-sounds/Makefile and asterisk-sounds/*sounds/Makefile
MODAS_CODECS ?=	gsm alaw ulaw g722 g729 wav # sln16 siren7 siren14

CATEGORIES +=	telephony
DISTNAME =	${MODAS_NAME}-${MODAS_LANG:C/(.+)/\1-/}${MODAS_CODEC}-${MODAS_VER}
FULLPKGNAME ?=  ${DISTNAME}
MASTER_SITES ?= http://downloads.asterisk.org/pub/telephony/sounds/releases/
HOMEPAGE =	http://www.asterisk.org/
COMMENT =	${MODAS_DESC}

EXTRACT_ONLY =
NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

# strictly speaking not, as they are just sound files, but packaging
# these on !shared arch is just a total waste of cycles as asterisk itself
# is SHARED_ONLY. can't use a BDEP on telephony/asterisk for this as some
# sound files are RDEP of asterisk.
SHARED_ONLY =	Yes

_LN-en_AU =	Australian English
_LN-en =	English
_LN-es =	Spanish
_LN-fr =	French
_LN-it =	Italian
_LN-ru =	Russian

MODAS_LANGNAME = ${_LN-${MODAS_LANG}}
MODAS_CODEC =	${FLAVOR}

FLAVORS ?=	${MODAS_CODECS}
FLAVOR ?=	gsm

.if defined(MODAS_LANGS)
.  for c in ${MODAS_CODECS}
.    for l in ${MODAS_LANGS}
SUPDISTFILES += ${MODAS_NAME}-$l-$c-${MODAS_VER}${EXTRACT_SUFX}
.    endfor
.  endfor
.else
.  for c in ${MODAS_CODECS}
SUPDISTFILES += ${MODAS_NAME}-$c-${MODAS_VER}${EXTRACT_SUFX}
.  endfor
.endif

_T = ${MODAS_NAME:S/asterisk-//}

MODAS_INST ?=	share/asterisk/sounds/${MODAS_LANG}
SUBST_VARS +=	MODAS_INST L MODAS_LANGNAME MODAS_CODEC MODAS_VER

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODAS_INST}
	${GZIP_CMD} -dc ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} | \
	    ${TAR} xf - -C ${PREFIX}/${MODAS_INST}
